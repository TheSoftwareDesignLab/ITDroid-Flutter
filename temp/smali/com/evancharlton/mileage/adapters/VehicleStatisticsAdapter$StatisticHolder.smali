.class Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
.super Ljava/lang/Object;
.source "VehicleStatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatisticHolder"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evancharlton/mileage/provider/Statistic;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statistic"    # Lcom/evancharlton/mileage/provider/Statistic;
    .param p3, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p2}, Lcom/evancharlton/mileage/provider/Statistic;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    .line 203
    invoke-virtual {p2, p1, p3}, Lcom/evancharlton/mileage/provider/Statistic;->getLabel(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->text:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/evancharlton/mileage/provider/StatisticsGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/evancharlton/mileage/provider/StatisticsGroup;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    .line 209
    invoke-virtual {p2}, Lcom/evancharlton/mileage/provider/StatisticsGroup;->getLabel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->text:Ljava/lang/String;

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    .line 211
    return-void
.end method
