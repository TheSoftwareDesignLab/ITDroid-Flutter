.class public Lcom/evancharlton/mileage/charts/BestFuelEconomyChart;
.super Lcom/evancharlton/mileage/charts/FuelEconomyChart;
.source "BestFuelEconomyChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/FuelEconomyChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/BestFuelEconomyChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processCursor(Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;Landroid/database/Cursor;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 8
    .param p1, "generator"    # Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 13
    const/4 v4, 0x0

    .line 14
    .local v4, "num":I
    const-wide v0, -0x3f07960000000000L    # -100000.0

    .line 15
    .local v0, "best_fuel_economy":D
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 29
    :cond_0
    return-void

    .line 19
    :cond_1
    if-lez v4, :cond_3

    .line 20
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 21
    .local v2, "economy":D
    invoke-static {p3, v2, v3, v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 22
    move-wide v0, v2

    .line 24
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/evancharlton/mileage/charts/BestFuelEconomyChart;->addPoint(JD)V

    .line 26
    .end local v2    # "economy":D
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "num":I
    .local v5, "num":I
    invoke-virtual {p1, v4}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 27
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v5

    .end local v5    # "num":I
    .restart local v4    # "num":I
    goto :goto_0
.end method
