.class public Lcom/evancharlton/mileage/charts/MinimumCostChart;
.super Lcom/evancharlton/mileage/charts/CostChart;
.source "MinimumCostChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/CostChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/MinimumCostChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 8
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 18
    const/4 v4, 0x0

    .line 19
    .local v4, "num":I
    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 20
    .local v2, "minimum_cost":D
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

    move-result-wide v0

    .line 25
    .local v0, "cost":D
    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    .line 26
    move-wide v2, v0

    .line 28
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/evancharlton/mileage/charts/MinimumCostChart;->addPoint(JD)V

    .line 29
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "num":I
    .local v5, "num":I
    invoke-virtual {p1, v4}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 30
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v5

    .line 31
    .end local v5    # "num":I
    .restart local v4    # "num":I
    goto :goto_0
.end method
