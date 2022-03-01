.class public Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;
.super Lcom/evancharlton/mileage/provider/Statistic;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationStatistic"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p3, "label"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/evancharlton/mileage/ChartActivity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "chartClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/ChartActivity;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/evancharlton/mileage/provider/Statistic;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/evancharlton/mileage/provider/Statistics$1;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "value"    # D

    .prologue
    .line 241
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/Statistics$LocationStatistic;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
