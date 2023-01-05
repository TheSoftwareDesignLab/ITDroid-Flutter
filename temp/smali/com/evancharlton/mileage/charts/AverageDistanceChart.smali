.class public Lcom/evancharlton/mileage/charts/AverageDistanceChart;
.super Lcom/evancharlton/mileage/charts/DistanceChart;
.source "AverageDistanceChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/DistanceChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/AverageDistanceChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 10
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, "num":I
    const-wide/16 v0, 0x0

    .line 20
    .local v0, "last_odometer":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    :cond_0
    return-void

    .line 24
    :cond_1
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 25
    .local v4, "odometer":D
    if-lez v2, :cond_2

    .line 26
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sub-double v8, v4, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/evancharlton/mileage/charts/AverageDistanceChart;->addPoint(JD)V

    .line 28
    :cond_2
    move-wide v0, v4

    .line 29
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {p1, v2}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 30
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v3

    .line 31
    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0
.end method
