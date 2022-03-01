.class public Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;
.super Lcom/evancharlton/mileage/charts/FuelEconomyChart;
.source "AverageFuelEconomyChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/FuelEconomyChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 6
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, "num":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    :cond_0
    return-void

    .line 22
    :cond_1
    if-lez v2, :cond_2

    .line 23
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 24
    .local v0, "economy":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_2

    .line 25
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/evancharlton/mileage/charts/AverageFuelEconomyChart;->addPoint(JD)V

    .line 28
    .end local v0    # "economy":D
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {p1, v2}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    move v2, v3

    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0
.end method
