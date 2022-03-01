.class public abstract Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$GroupItemsAdapter;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$AnnotationItemsAdapter;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SmartItemsAdapter;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$PointItemsAdapter;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SeriesItemsAdapter;
    }
.end annotation


# instance fields
.field protected final m_itemsFactory:Lcom/artfulbits/aiCharts/Base/IItemBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/IItemBinder",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;"
        }
    .end annotation
.end field

.field protected m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

.field protected final m_legendItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legendItems:Ljava/util/Vector;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_itemsFactory:Lcom/artfulbits/aiCharts/Base/IItemBinder;

    return-void
.end method


# virtual methods
.method a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Legend is already set."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legendItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method a(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCorrespondingSeries()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLegendInst()Lcom/artfulbits/aiCharts/Base/ChartLegend;

    move-result-object v3

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected getLegendItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->getSourceItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legendItems:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->setSize(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legendItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_itemsFactory:Lcom/artfulbits/aiCharts/Base/IItemBinder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/artfulbits/aiCharts/Base/IItemBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0, v4}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->setLegend(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legendItems:Ljava/util/Vector;

    invoke-virtual {v4, v1, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->m_legendItems:Ljava/util/Vector;

    return-object v0
.end method

.method protected getSourceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
