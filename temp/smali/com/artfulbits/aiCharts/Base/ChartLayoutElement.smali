.class public abstract Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;
.super Lcom/artfulbits/aiCharts/Base/f;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ILayout$IElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$1;,
        Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;,
        Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;
    }
.end annotation


# instance fields
.field protected m_alignment:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field protected final m_bounds:Landroid/graphics/Rect;

.field protected m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

.field protected m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

.field protected m_isAutoLayout:Z

.field protected m_isVisible:Z

.field protected m_measuredHeight:I

.field protected m_measuredWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/f;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_alignment:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredWidth:I

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iput-boolean v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isVisible:Z

    iput-boolean v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isAutoLayout:Z

    return-void
.end method


# virtual methods
.method public getAlignment()Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_alignment:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    return-object v0
.end method

.method public getDock()Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    return-object v0
.end method

.method public getMeasureWidth()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredWidth:I

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredHeight:I

    return v0
.end method

.method protected inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->setVisible(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/f;->inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V

    return-void

    :cond_1
    const-string v0, "dock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->setDock(Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;)V

    goto :goto_0

    :cond_2
    const-string v0, "align"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->setAlignment(Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;)V

    goto :goto_0
.end method

.method protected invalidateChart(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAutoLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isAutoLayout:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isVisible:Z

    return v0
.end method

.method public layout(Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$1;->a:[I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_alignment:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_measuredHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public measure(Landroid/graphics/Point;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setAlignment(Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_alignment:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_alignment:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->invalidateChart(Z)V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isAutoLayout:Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->invalidateChart(Z)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isAutoLayout:Z

    :goto_0
    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->invalidateChart(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isAutoLayout:Z

    goto :goto_0
.end method

.method protected setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    return-void
.end method

.method public setDock(Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_dock:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->invalidateChart(Z)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->m_isVisible:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;->invalidateChart(Z)V

    :cond_0
    return-void
.end method
