.class public Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;
.super Lcom/evancharlton/mileage/provider/Statistic;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CostPerDistanceStatistic"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "label"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/evancharlton/mileage/provider/Statistic;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/evancharlton/mileage/provider/Statistics$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/evancharlton/mileage/provider/Statistics$1;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "value"    # D

    .prologue
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol(Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v3, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "cost":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/evancharlton/mileage/math/Calculator;->getDistanceUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "distance":Ljava/lang/String;
    const v2, 0x7f0700cf

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLabel(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 153
    iget v0, p0, Lcom/evancharlton/mileage/provider/Statistics$CostPerDistanceStatistic;->mLabel:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/evancharlton/mileage/math/Calculator;->getDistanceUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
