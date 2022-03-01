.class public abstract Lcom/evancharlton/mileage/provider/Statistic;
.super Ljava/lang/Object;
.source "Statistic.java"


# instance fields
.field private final mChartClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/evancharlton/mileage/ChartActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFormatter:Ljava/text/DecimalFormat;

.field protected final mLabel:I

.field private final mValue:Lcom/evancharlton/mileage/dao/CachedValue;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "label"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, v0, p1}, Lcom/evancharlton/mileage/provider/Statistic;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 2
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
    .line 25
    .local p2, "chartClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/ChartActivity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mFormatter:Ljava/text/DecimalFormat;

    .line 26
    if-eqz p1, :cond_0

    .line 27
    sget-object v0, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    iput p3, p0, Lcom/evancharlton/mileage/provider/Statistic;->mLabel:I

    .line 30
    new-instance v0, Lcom/evancharlton/mileage/dao/CachedValue;

    invoke-direct {v0, p1}, Lcom/evancharlton/mileage/dao/CachedValue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mValue:Lcom/evancharlton/mileage/dao/CachedValue;

    .line 31
    iput-object p2, p0, Lcom/evancharlton/mileage/provider/Statistic;->mChartClass:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
.end method

.method public getChartClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/evancharlton/mileage/ChartActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mChartClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mValue:Lcom/evancharlton/mileage/dao/CachedValue;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/CachedValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mLabel:I

    return v0
.end method

.method public getLabel(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .prologue
    .line 37
    iget v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mValue:Lcom/evancharlton/mileage/dao/CachedValue;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/CachedValue;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 41
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/Statistic;->mValue:Lcom/evancharlton/mileage/dao/CachedValue;

    invoke-virtual {v0, p1, p2}, Lcom/evancharlton/mileage/dao/CachedValue;->setValue(D)V

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/evancharlton/mileage/provider/Statistic;->mValue:Lcom/evancharlton/mileage/dao/CachedValue;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/CachedValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/provider/Statistic;->mValue:Lcom/evancharlton/mileage/dao/CachedValue;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/CachedValue;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
