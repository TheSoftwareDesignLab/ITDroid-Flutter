.class public Lcom/evancharlton/mileage/dao/FillupSeries;
.super Ljava/util/ArrayList;
.source "FillupSeries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/evancharlton/mileage/dao/Fillup;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x499d7413cbda82f6L


# instance fields
.field private mEconomyVolume:D

.field private mTotalCost:D


# direct methods
.method public varargs constructor <init>([Lcom/evancharlton/mileage/dao/Fillup;)V
    .locals 8
    .param p1, "fillups"    # [Lcom/evancharlton/mileage/dao/Fillup;

    .prologue
    const-wide/16 v4, 0x0

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    .line 12
    iput-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    .line 15
    array-length v2, p1

    .line 16
    .local v2, "length":I
    const/4 v3, 0x0

    .line 17
    .local v3, "previous":Lcom/evancharlton/mileage/dao/Fillup;
    const/4 v0, 0x0

    .line 18
    .local v0, "current":Lcom/evancharlton/mileage/dao/Fillup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 19
    aget-object v0, p1, v1

    .line 20
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    invoke-virtual {v3, v0}, Lcom/evancharlton/mileage/dao/Fillup;->setNext(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v4

    if-nez v4, :cond_1

    .line 24
    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 26
    :cond_1
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    move-object v3, v0

    .line 29
    iget-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method

.method public static load(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/dao/FillupSeries;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupSeries;>;"
    new-instance v2, Lcom/evancharlton/mileage/dao/FillupSeries;

    new-array v3, v4, [Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 116
    .local v2, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v0, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 118
    .local v0, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isRestart()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Lcom/evancharlton/mileage/dao/FillupSeries;

    .end local v2    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    new-array v3, v4, [Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 122
    .restart local v2    # "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    goto :goto_0

    .line 124
    .end local v0    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v1
.end method


# virtual methods
.method public add(Lcom/evancharlton/mileage/dao/Fillup;)Z
    .locals 4
    .param p1, "fillup"    # Lcom/evancharlton/mileage/dao/Fillup;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/dao/Fillup;->setNext(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 37
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/evancharlton/mileage/dao/Fillup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    move-result v0

    return v0
.end method

.method public first()Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method public getEconomyVolume()D
    .locals 8

    .prologue
    .line 78
    iget-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    .line 79
    const-wide/16 v2, 0x0

    .line 80
    .local v2, "total":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    .line 81
    .local v0, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->validForEconomy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 88
    .end local v0    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_1
    iput-wide v2, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "total":D
    :cond_2
    iget-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    return-wide v4
.end method

.method public getTimeRange()J
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->first()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalCost()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    return-wide v0
.end method

.method public getTotalDistance()D
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v1

    .line 51
    .local v1, "last":Lcom/evancharlton/mileage/dao/Fillup;
    :goto_0
    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->first()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 55
    .local v0, "first":Lcom/evancharlton/mileage/dao/Fillup;
    if-ne v1, v0, :cond_2

    .line 60
    .end local v0    # "first":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v1    # "last":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_1
    :goto_1
    return-wide v2

    .line 58
    .restart local v0    # "first":Lcom/evancharlton/mileage/dao/Fillup;
    .restart local v1    # "last":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_2
    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    goto :goto_1
.end method

.method public getTotalVolume()D
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getEconomyVolume()D

    move-result-wide v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v3

    add-double v0, v1, v3

    return-wide v0
.end method

.method public last()Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method
