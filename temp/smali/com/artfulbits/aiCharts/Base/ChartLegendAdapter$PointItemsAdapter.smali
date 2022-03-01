.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$PointItemsAdapter;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointItemsAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$PointItemsAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method


# virtual methods
.method final a(I)Z
    .locals 2

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getSourceItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$PointItemsAdapter;->getCorrespondingSeries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v0

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
