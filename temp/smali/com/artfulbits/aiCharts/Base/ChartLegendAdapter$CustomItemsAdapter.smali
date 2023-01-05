.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomItemsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;"
    }
.end annotation


# instance fields
.field protected final m_items:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    invoke-direct {p0, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;-><init>(Ljava/util/Collection;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;-><init>(Ljava/util/Collection;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;)V

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_items:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_items:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_items:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method protected final getSourceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_items:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method
