.class final Lcom/evancharlton/mileage/provider/Statistics$1;
.super Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p3, "x2"    # I

    .prologue
    .line 225
    .local p2, "x1":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/ChartActivity;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    return-void
.end method


# virtual methods
.method public format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "value"    # D

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;->format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "amount":Ljava/lang/String;
    const v1, 0x7f0700cf

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0700e0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
