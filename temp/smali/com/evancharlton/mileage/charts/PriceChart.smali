.class public abstract Lcom/evancharlton/mileage/charts/PriceChart;
.super Lcom/evancharlton/mileage/charts/LineChart;
.source "PriceChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/LineChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected createChartGenerator()Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/charts/PriceChart;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "price"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/evancharlton/mileage/charts/LineChart$LineChartGenerator;-><init>(Lcom/evancharlton/mileage/charts/LineChart;Lcom/evancharlton/mileage/dao/Vehicle;[Ljava/lang/String;)V

    return-object v0
.end method
