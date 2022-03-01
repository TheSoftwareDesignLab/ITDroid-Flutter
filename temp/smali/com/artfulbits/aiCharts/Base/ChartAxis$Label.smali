.class public final Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;
.super Lcom/artfulbits/aiCharts/Base/ChartAxis$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Label"
.end annotation


# instance fields
.field public final Position:D

.field public final Text:Ljava/lang/String;

.field protected X:F

.field protected Y:F

.field private a:F

.field private b:F

.field protected height:F

.field protected visible:Z

.field protected width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis$a;-><init>()V

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->visible:Z

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    iput-wide p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Position:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;-><init>(Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method final a(FFI)V
    .locals 2

    and-int/lit8 v0, p3, 0xf

    packed-switch v0, :pswitch_data_0

    :goto_0
    shr-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    goto :goto_0

    :pswitch_2
    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    goto :goto_1

    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    goto :goto_1

    :pswitch_5
    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final a(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/k;

    move-result-object v0

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->X:F

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Y:F

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, -0x41000000    # -0.5f

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    mul-float/2addr v4, v5

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected final measure(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/k;

    move-result-object v0

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->Text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iget v1, v0, Lcom/artfulbits/aiCharts/Base/k;->a:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/k;->b:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/k;->c:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->width:F

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->a:F

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/k;->c:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->b:F

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/k;->b:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;->height:F

    goto :goto_0
.end method
