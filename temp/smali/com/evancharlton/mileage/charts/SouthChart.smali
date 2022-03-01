.class public Lcom/evancharlton/mileage/charts/SouthChart;
.super Lcom/evancharlton/mileage/charts/LatitudeChart;
.source "SouthChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/LatitudeChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/SouthChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 8
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, "num":I
    const-wide v0, 0x40c3880000000000L    # 10000.0

    .line 19
    .local v0, "maximum_south":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    :cond_0
    return-void

    .line 23
    :cond_1
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 24
    .local v4, "south":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_3

    .line 25
    cmpg-double v6, v4, v0

    if-gez v6, :cond_2

    .line 26
    move-wide v0, v4

    .line 28
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/evancharlton/mileage/charts/SouthChart;->addPoint(JD)V

    .line 30
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {p1, v2}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 31
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v3

    .line 32
    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0
.end method
