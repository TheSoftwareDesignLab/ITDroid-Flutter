.class final Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final c:Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;->c:Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;

    return-void
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;->c:Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder$a;->c:Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Annotations/ChartDrawableAnnotation;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final measure(Landroid/graphics/Point;)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
