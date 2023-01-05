.class public abstract Lcom/evancharlton/mileage/charts/IntervalCostChart;
.super Lcom/evancharlton/mileage/charts/CostChart;
.source "IntervalCostChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/CostChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInterval()J
.end method

.method protected final processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 11
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    const/4 v10, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .local v2, "num":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/IntervalCostChart;->getInterval()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 15
    .local v0, "limit":J
    const-wide/16 v4, 0x0

    .line 16
    .local v4, "totalCost":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 27
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_2

    .line 21
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 22
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/evancharlton/mileage/charts/IntervalCostChart;->addPoint(JD)V

    .line 24
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {p1, v2}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 25
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v3

    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0
.end method
