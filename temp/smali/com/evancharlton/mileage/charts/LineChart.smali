.class public abstract Lcom/evancharlton/mileage/charts/LineChart;
.super Lcom/evancharlton/mileage/ChartActivity;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    }
.end annotation


# instance fields
.field private mPoints:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/evancharlton/mileage/ChartActivity;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method protected final addPoint(JD)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "value"    # D

    .prologue
    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/evancharlton/mileage/charts/LineChart;->addPoint(Ljava/util/Date;D)V

    .line 38
    return-void
.end method

.method protected final addPoint(Ljava/util/Date;D)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "value"    # D

    .prologue
    .line 33
    iget-object v0, p0, Lcom/evancharlton/mileage/charts/LineChart;->mPoints:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->addDate(Ljava/util/Date;[D)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    .line 34
    return-void
.end method

.method protected abstract createChartGenerator()Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
.end method

.method protected createSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getAxisTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartTypes;->Line:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected final createSeries(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 0
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "points"    # Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 27
    iput-object p2, p0, Lcom/evancharlton/mileage/charts/LineChart;->mPoints:Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    .line 29
    invoke-virtual {p0, p1, p3, p4}, Lcom/evancharlton/mileage/charts/LineChart;->processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 30
    return-void
.end method

.method protected abstract getAxisTitle()Ljava/lang/String;
.end method

.method protected final getExecuteParameters()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 8

    .prologue
    .line 44
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "vehicle_id"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/charts/LineChart;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {v0, v6}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected abstract processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
.end method

.method protected final serializeData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getChart()Lcom/artfulbits/aiCharts/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/ChartView;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->toArray()[Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    return-object v0
.end method

.method protected final unserializeData(Ljava/lang/Object;)V
    .locals 9
    .param p1, "saved"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    .end local p1    # "saved":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [Lcom/artfulbits/aiCharts/Base/ChartPoint;

    .line 59
    .local v5, "savedData":[Lcom/artfulbits/aiCharts/Base/ChartPoint;
    if-eqz v5, :cond_1

    .line 60
    new-instance v6, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/LineChart;->getAxisTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartTypes;->Line:Ljava/lang/Class;

    invoke-direct {v6, v7, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    .local v6, "series":Lcom/artfulbits/aiCharts/Base/ChartSeries;
    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v4

    .line 62
    .local v4, "points":Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    move-object v0, v5

    .local v0, "arr$":[Lcom/artfulbits/aiCharts/Base/ChartPoint;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 63
    .local v3, "point":Lcom/artfulbits/aiCharts/Base/ChartPoint;
    invoke-virtual {v4, v3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->add(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "point":Lcom/artfulbits/aiCharts/Base/ChartPoint;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/evancharlton/mileage/charts/LineChart;->addChartSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    .line 67
    .end local v0    # "arr$":[Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "points":Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
    .end local v6    # "series":Lcom/artfulbits/aiCharts/Base/ChartSeries;
    :cond_1
    return-void
.end method
