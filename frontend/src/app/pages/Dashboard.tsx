import { useEffect, useState } from "react";
import { Users, Calendar, CheckCircle, TrendingUp } from "lucide-react";
import { StatsCard } from "../components/StatsCard";
import { FollowUpActivityChart } from "../components/FollowUpActivityChart";
import { ClosingPerMonthChart } from "../components/ClosingPerMonthChart";
import { RecentFollowUpTable } from "../components/RecentFollowUpTable";
import { getDashboardSummary, type DashboardSummary } from "../lib/api";

const emptySummary: DashboardSummary["data"] = {
  stats: {
    total_jemaah: 0,
    follow_up_hari_ini: 0,
    total_closing: 0,
    conversion_rate: 0,
  },
  follow_up_activity: [],
  closing_per_month: [],
  recent_follow_ups: [],
};


export function Dashboard() {
  const [summary, setSummary] = useState(emptySummary);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let active = true;

    getDashboardSummary()
      .then((response) => {
        if (active) {
          setSummary(response.data);
        }
      })
      .catch((fetchError: unknown) => {
        if (active) {
          setError(fetchError instanceof Error ? fetchError.message : "Gagal memuat dashboard");
        }
      })
      .finally(() => {
        if (active) {
          setLoading(false);
        }
      });

    return () => {
      active = false;
    };
  }, []);

  // --- SOLUSI: Proteksi Loading ---
  // Kita kembalikan tampilan loading jika data belum siap
  if (loading) {
    return (
      <div className="flex h-64 items-center justify-center text-gray-500">
        Memuat data dashboard dari database...
      </div>
    );
  }

  // Kode ini hanya akan jalan kalau 'loading' sudah false (data sudah ada)
  const mergedMonthlyData = summary.follow_up_activity.map((item: any) => ({
    name: item.month,
    followUp: item.count,
    closing: summary.closing_per_month.find((closing: any) => closing.month === item.month)?.closing ?? 0,
  }));

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-3xl font-bold text-gray-900">Dashboard</h1>
        <p className="text-gray-500 mt-1">Selamat datang di Jemaah Follow Up Management System</p>
      </div>

      {error ? (
        <div className="rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm text-red-700">
          {error}
        </div>
      ) : null}

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        <StatsCard title="Total Calon Jemaah" value={summary.stats.total_jemaah.toString()} icon={Users} trend="CRM aktif" trendUp={true} bgColor="bg-blue-50" iconColor="text-blue-600" />
        <StatsCard title="Follow Up Hari Ini" value={summary.stats.follow_up_hari_ini.toString()} icon={Calendar} trend="Perlu dikerjakan" trendUp={true} bgColor="bg-purple-50" iconColor="text-purple-600" />
        <StatsCard title="Jemaah Closing" value={summary.stats.total_closing.toString()} icon={CheckCircle} trend="Closing tercatat" trendUp={true} bgColor="bg-green-50" iconColor="text-green-600" />
        <StatsCard title="Conversion Rate" value={`${summary.stats.conversion_rate}%`} icon={TrendingUp} trend="Dari total prospek" trendUp={true} bgColor="bg-orange-50" iconColor="text-orange-600" />
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <FollowUpActivityChart data={mergedMonthlyData} />
        <ClosingPerMonthChart data={summary.closing_per_month.map((item: any) => ({ name: item.month, closing: item.closing }))} />
      </div>

      <RecentFollowUpTable items={summary.recent_follow_ups} />
    </div>
  );
}