.class public Lcom/evancharlton/mileage/provider/StatisticsGroup;
.super Ljava/lang/Object;
.source "StatisticsGroup.java"


# instance fields
.field private final mLabel:I

.field private final mStatistics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/provider/Statistic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V
    .locals 4
    .param p1, "label"    # I
    .param p2, "statistics"    # [Lcom/evancharlton/mileage/provider/Statistic;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/evancharlton/mileage/provider/StatisticsGroup;->mStatistics:Ljava/util/ArrayList;

    .line 12
    sget-object v2, Lcom/evancharlton/mileage/provider/Statistics;->GROUPS:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    array-length v1, p2

    .line 14
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 15
    iget-object v2, p0, Lcom/evancharlton/mileage/provider/StatisticsGroup;->mStatistics:Ljava/util/ArrayList;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iput p1, p0, Lcom/evancharlton/mileage/provider/StatisticsGroup;->mLabel:I

    .line 18
    return-void
.end method


# virtual methods
.method public getLabel()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/evancharlton/mileage/provider/StatisticsGroup;->mLabel:I

    return v0
.end method

.method public getStatistics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/provider/Statistic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/StatisticsGroup;->mStatistics:Ljava/util/ArrayList;

    return-object v0
.end method
