.class public Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
.super Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/charts/LineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LineChartGenerator"
.end annotation


# instance fields
.field private final mActivity:Lcom/evancharlton/mileage/charts/LineChart;

.field private final mProjection:[Ljava/lang/String;

.field private final mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;


# direct methods
.method public constructor <init>(Lcom/evancharlton/mileage/charts/LineChart;Lcom/evancharlton/mileage/dao/Vehicle;[Ljava/lang/String;)V
    .locals 0
    .param p1, "chartActivity"    # Lcom/evancharlton/mileage/charts/LineChart;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mActivity:Lcom/evancharlton/mileage/charts/LineChart;

    .line 85
    iput-object p2, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 86
    iput-object p3, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mProjection:[Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->doInBackground([Ljava/lang/Object;)[Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Lcom/artfulbits/aiCharts/Base/ChartSeries;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 91
    iget-object v0, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mActivity:Lcom/evancharlton/mileage/charts/LineChart;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/charts/LineChart;->createSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v8

    .line 92
    .local v8, "series":Lcom/artfulbits/aiCharts/Base/ChartSeries;
    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v7

    .line 94
    .local v7, "points":Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->getActivity()Lcom/evancharlton/mileage/ChartActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ChartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mProjection:[Ljava/lang/String;

    const-string v3, "vehicle_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    iget-object v5, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v5, "odometer asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->publishProgress([Ljava/lang/Object;)V

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    iget-object v0, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mActivity:Lcom/evancharlton/mileage/charts/LineChart;

    iget-object v1, p0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0, p0, v7, v6, v1}, Lcom/evancharlton/mileage/charts/LineChart;->createSeries(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v12, [Lcom/artfulbits/aiCharts/Base/ChartSeries;

    aput-object v8, v0, v11

    goto :goto_0
.end method

.method public final update(I)V
    .locals 3
    .param p1, "update"    # I

    .prologue
    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->publishProgress([Ljava/lang/Object;)V

    .line 113
    return-void
.end method
