.class public Lcom/evancharlton/mileage/charts/AverageVolumeChart;
.super Lcom/evancharlton/mileage/charts/VolumeChart;
.source "AverageVolumeChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/VolumeChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAxisTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/AverageVolumeChart;->getString(I)Ljava/lang/String;

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
    const/4 v0, 0x0

    .line 18
    .local v0, "num":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    :cond_0
    return-void

    .line 22
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/evancharlton/mileage/charts/AverageVolumeChart;->addPoint(JD)V

    .line 23
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "num":I
    .local v1, "num":I
    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;->update(I)V

    .line 24
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    .end local v1    # "num":I
    .restart local v0    # "num":I
    goto :goto_0
.end method
