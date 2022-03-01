.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IItemBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;,
        Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/IItemBinder",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;


# instance fields
.field private final b:Lcom/artfulbits/aiCharts/Base/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->b:Lcom/artfulbits/aiCharts/Base/m;

    return-void

    :cond_0
    new-instance v0, Lcom/artfulbits/aiCharts/Base/m;

    invoke-direct {v0, p1}, Lcom/artfulbits/aiCharts/Base/m;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;Lcom/artfulbits/aiCharts/Base/ChartLegendItem;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem;
    .locals 3

    if-nez p2, :cond_1

    new-instance p2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-direct {p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;-><init>()V

    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;

    invoke-direct {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    invoke-virtual {p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Landroid/graphics/drawable/Drawable;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->b:Lcom/artfulbits/aiCharts/Base/m;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    :goto_1
    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object p1, p2

    :goto_3
    return-object p1

    :cond_1
    if-eq p2, p1, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->clearCells()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->b:Lcom/artfulbits/aiCharts/Base/m;

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;

    invoke-direct {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    invoke-virtual {p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Landroid/graphics/drawable/Drawable;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->b:Lcom/artfulbits/aiCharts/Base/m;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    :goto_4
    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->b:Lcom/artfulbits/aiCharts/Base/m;

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    goto :goto_4

    :cond_5
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;

    if-eqz v0, :cond_8

    instance-of v0, p1, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->getCells()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;

    invoke-direct {v2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$b;-><init>(Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartTextAnnotation;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    :cond_6
    :goto_5
    invoke-virtual {p2, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->getCells()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;

    invoke-direct {v2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;-><init>(Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    goto :goto_5

    :cond_8
    instance-of v0, p1, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->addCell(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;

    goto/16 :goto_2
.end method

.method public final bridge synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->bind(Ljava/lang/Object;Lcom/artfulbits/aiCharts/Base/ChartLegendItem;)Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    move-result-object v0

    return-object v0
.end method
