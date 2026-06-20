package com.bespoke.bespoke_backend.controller;

import com.bespoke.bespoke_backend.dto.LoginRequest;
import com.bespoke.bespoke_backend.model.User;
import com.bespoke.bespoke_backend.repository.UserRepository;
import com.bespoke.bespoke_backend.security.JwtTokenProvider;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final JwtTokenProvider tokenProvider;
    private final UserRepository userRepository;

    public AuthController(AuthenticationManager authenticationManager, JwtTokenProvider tokenProvider, UserRepository userRepository) {
        this.authenticationManager = authenticationManager;
        this.tokenProvider = tokenProvider;
        this.userRepository = userRepository;
    }

    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@RequestBody LoginRequest loginRequest) {
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            loginRequest.getEmail(),
                            loginRequest.getPassword()
                    )
            );

            SecurityContextHolder.getContext().setAuthentication(authentication);

            String jwt = tokenProvider.generateToken(authentication);

            // Get user data
            User user = userRepository.findByEmail(loginRequest.getEmail())
                    .orElseThrow(() -> new UsernameNotFoundException("User not found"));

            // Update last login
            user.setLastLoginAt(LocalDateTime.now());
            userRepository.save(user);

            // Build response matching Laravel format: { data: { user: {...}, token: "..." } }
            Map<String, Object> userData = new HashMap<>();
            userData.put("id", user.getId());
            userData.put("name", user.getName());
            userData.put("email", user.getEmail());
            userData.put("phone", user.getPhone());
            userData.put("role", user.getRole());
            userData.put("is_active", user.getIsActive());
            userData.put("last_login_at", user.getLastLoginAt() != null ? user.getLastLoginAt().toString() : null);
            userData.put("created_at", user.getCreatedAt() != null ? user.getCreatedAt().toString() : null);
            userData.put("updated_at", user.getUpdatedAt() != null ? user.getUpdatedAt().toString() : null);

            Map<String, Object> dataWrapper = new HashMap<>();
            dataWrapper.put("user", userData);
            dataWrapper.put("token", jwt);

            Map<String, Object> response = new HashMap<>();
            response.put("data", dataWrapper);

            return ResponseEntity.ok(response);
        } catch (BadCredentialsException e) {
            Map<String, String> error = new HashMap<>();
            error.put("message", "Email atau password salah");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(error);
        }
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout() {
        SecurityContextHolder.clearContext();
        Map<String, String> response = new HashMap<>();
        response.put("message", "Logged out successfully");
        return ResponseEntity.ok(response);
    }

    @GetMapping("/profile")
    public ResponseEntity<?> getUserProfile() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found: " + email));

        Map<String, Object> userData = new HashMap<>();
        userData.put("id", user.getId());
        userData.put("name", user.getName());
        userData.put("email", user.getEmail());
        userData.put("phone", user.getPhone());
        userData.put("role", user.getRole());
        userData.put("is_active", user.getIsActive());
        userData.put("last_login_at", user.getLastLoginAt() != null ? user.getLastLoginAt().toString() : null);
        userData.put("created_at", user.getCreatedAt() != null ? user.getCreatedAt().toString() : null);
        userData.put("updated_at", user.getUpdatedAt() != null ? user.getUpdatedAt().toString() : null);

        Map<String, Object> response = new HashMap<>();
        response.put("data", userData);
        return ResponseEntity.ok(response);
    }
}
