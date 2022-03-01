.class public abstract Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;
.super Lcom/artfulbits/aiCharts/Base/f;


# static fields
.field protected static final ACTION_PROPERTY_CHANGED:I = 0x1

.field protected static final ACTION_UNKNOWN:I

.field private static final a:Ljava/lang/Integer;

.field private static final b:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private static final c:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private static final d:Landroid/graphics/Point;

.field private static final e:Landroid/graphics/Paint;

.field private static final f:Landroid/graphics/Paint;


# instance fields
.field private g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Integer;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/lang/Boolean;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Boolean;

.field private r:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private s:Lcom/artfulbits/aiCharts/Enums/Alignment;

.field private t:Landroid/graphics/Point;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Object;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Lcom/artfulbits/aiCharts/Base/m;

.field private z:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a:Ljava/lang/Integer;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->d:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->e:Landroid/graphics/Paint;

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->f:Landroid/graphics/Paint;

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/f;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/f;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartEngine;->DrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->DefaultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLocalBackColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getBorderColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getFormatedLabel()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabelFormatInst()Lcom/artfulbits/aiCharts/Base/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/Base/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->b:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLabelAngle()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabelAngle()Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getLabelBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLabelFormat()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabelFormatInst()Lcom/artfulbits/aiCharts/Base/m;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/m;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getLabelFormatInst()Lcom/artfulbits/aiCharts/Base/m;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabelFormatInst()Lcom/artfulbits/aiCharts/Base/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    goto :goto_0
.end method

.method public getLabelPadding()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getLineWidth()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLineWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getLocalBackColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMarkerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getMarkerSize()Landroid/graphics/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v0

    goto :goto_0
.end method

.method public getShowLabel()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getShowLabel()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->e:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->c:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    goto :goto_0
.end method

.method protected inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const-string v0, "background"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "filter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4, p3, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v0, "marker"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setMarkerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const-string v0, "markersize"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    array-length v2, v0

    if-le v2, v4, :cond_4

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setMarkerSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_4
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_5
    const-string v0, "showlabel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4, p3, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setShowLabel(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "color"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setBackColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "border"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p4, p3, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setBorderColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "linewidth"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p4, p3, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setLineWidth(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "halign"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Enums/Alignment;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setHLabelAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "valign"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Enums/Alignment;->valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setVLabelAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p2}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->findAttribute(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public isBackFilterEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->isBackFilterEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected onChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    return-void
.end method

.method public setAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<TTValue;>;TTValue;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBackColor(Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->i:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBackFilterEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->k:Ljava/lang/Boolean;

    return-void
.end method

.method protected setBaseAttributes(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->g:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBorderColor(Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->n:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    return-void
.end method

.method public setHLabelAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->r:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->p:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLabelAngle(Ljava/lang/Float;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->z:Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLabelBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/artfulbits/aiCharts/Base/m;

    invoke-direct {v0, p1}, Lcom/artfulbits/aiCharts/Base/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->y:Lcom/artfulbits/aiCharts/Base/m;

    goto :goto_0
.end method

.method public setLabelPadding(Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->u:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLineWidth(Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->o:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMarkerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->a(Landroid/graphics/drawable/Drawable;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMarkerPaint(Landroid/graphics/Paint;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMarkerSize(Landroid/graphics/Point;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->t:Landroid/graphics/Point;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->setPaint(Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->x:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public setShowLabel(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->q:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->v:Ljava/lang/Object;

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->w:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVLabelAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->s:Lcom/artfulbits/aiCharts/Enums/Alignment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
