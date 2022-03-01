.class public final Lcom/artfulbits/aiCharts/Base/ChartEngine;
.super Lcom/artfulbits/aiCharts/Base/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartEngine$5;,
        Lcom/artfulbits/aiCharts/Base/ChartEngine$b;,
        Lcom/artfulbits/aiCharts/Base/ChartEngine$c;,
        Lcom/artfulbits/aiCharts/Base/ChartEngine$a;
    }
.end annotation


# static fields
.field protected static final ANNOTATIONS_CHANGED:I = 0x200

.field protected static final AREAS_CHANGED:I = 0x40

.field protected static final AREAS_LAYOUT:I = 0x2

.field protected static final LEGENDS_CHANGED:I = 0x100

.field protected static final LEGENDS_LAYOUT:I = 0x1

.field public static final LICENSE:Lcom/artfulbits/license/LicenseData;

.field protected static final NEED_LAYOUT:I = 0x1

.field protected static final POINTS_CHANGED:I = 0x20

.field protected static final SERIES_CHANGED:I = 0x10

.field protected static final TITLES_CHANGED:I = 0x80

.field protected static final TITLES_LAYOUT:I

.field private static final a:[B

.field private static final b:[B

.field private static final c:Lcom/artfulbits/aiCharts/Base/r;


# instance fields
.field protected final DrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final d:Landroid/graphics/Rect;

.field private e:I

.field private f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartArea;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegend;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartTitle;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/IInvalidateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artfulbits/aiCharts/Base/p;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

.field private n:Z

.field private o:Lcom/artfulbits/aiCharts/Base/ChartPalette;

.field private p:Z

.field private q:Z

.field private r:I

.field private final s:Lcom/artfulbits/aiCharts/Base/ChartGraph;

.field private final t:[Lcom/artfulbits/aiCharts/Base/ILayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->a:[B

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->b:[B

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const-string v1, "/assets/aicharts.ablic"

    const-string v2, "/assets/license.lic"

    sget-object v3, Lcom/artfulbits/aiCharts/Base/ChartEngine;->a:[B

    sget-object v4, Lcom/artfulbits/aiCharts/Base/ChartEngine;->b:[B

    invoke-static {v0, v1, v2, v3, v4}, Lcom/artfulbits/license/LicenseData;->fromPackage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[B[B)Lcom/artfulbits/license/LicenseData;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->LICENSE:Lcom/artfulbits/license/LicenseData;

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/r;->a(Lcom/artfulbits/license/LicenseData;)Lcom/artfulbits/aiCharts/Base/r;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->c:Lcom/artfulbits/aiCharts/Base/r;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        -0x35t
        0x50t
        0x19t
        0x24t
        0x40t
        0x31t
        -0x6t
        -0x1ct
        -0x6dt
        0x2ct
        -0x3dt
        -0x7at
        0x52t
        -0x73t
        -0x66t
        -0x4t
        -0x54t
        -0xft
        -0x11t
        -0x7bt
        -0x74t
        0x13t
        -0x4ct
        -0x6dt
        -0x75t
        0x75t
        -0x4ft
        0x30t
        0x66t
        -0x7ft
        -0x67t
        0x27t
        0x14t
        -0x39t
        -0x4dt
        0xct
        0x23t
        0x52t
        0x2ft
        -0x23t
        0xat
        -0x26t
        0x58t
        0x3ct
        0x4ft
        -0x2ct
        -0x7et
        0x10t
        -0x1dt
        -0x7bt
        0x55t
        0x1ct
        -0x72t
        0x59t
        0x4ct
        0x48t
        0x70t
        -0x67t
        0x12t
        0x65t
        0x7at
        0x66t
        -0x1t
        0x5t
        -0x35t
        -0x7ft
        -0x2ct
        -0x67t
        0x15t
        -0x17t
        -0x79t
        -0x3et
        0x27t
        0x2bt
        0x42t
        0x7et
        -0xat
        -0x8t
        -0x3ft
        -0x72t
        0x48t
        -0x56t
        -0x46t
        -0x5bt
        0x9t
        -0x4dt
        -0x34t
        -0x4ct
        -0x43t
        -0x6ft
        0x46t
        -0xdt
        -0x26t
        -0x3ct
        0x31t
        0x55t
        0x76t
        -0x22t
        -0x7dt
        -0x32t
        0x62t
        -0x79t
        -0x7ft
        -0x8t
        0x40t
        0x2ft
        -0x44t
        -0x6et
        0x36t
        0x68t
        -0x23t
        -0x4et
        -0x57t
        -0x34t
        0x22t
        -0x37t
        -0x33t
        -0x62t
        -0x6ft
        -0x80t
        -0x48t
        0x4bt
        -0x51t
        0x22t
        0x7dt
        0x4ft
        -0x6at
        -0x3bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/f;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    const/16 v0, 0xa

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->n:Z

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->Rainbow:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->o:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    iput-boolean v4, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->p:Z

    iput-boolean v3, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->q:Z

    iput v3, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->s:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/g;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/g;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->DrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ILayout;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartEngine$3;

    invoke-direct {v2, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$3;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    aput-object v2, v1, v3

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    const/4 v1, 0x2

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartEngine$4;

    invoke-direct {v2, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$4;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    aput-object v2, v0, v1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartEngine$a;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$a;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const-string v2, "area_"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const-string v2, "series_"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartEngine$b;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$b;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const-string v2, "legend_"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartEngine$1;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$1;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-direct {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartCollection;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartEngine$2;

    invoke-direct {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$2;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;-><init>(Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->j:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;-><init>(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;-><init>()V

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    invoke-static {p2, v0}, Lcom/artfulbits/aiCharts/Base/f;->nextTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->inflate(Lcom/artfulbits/aiCharts/Base/f;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to read \'chart\' tag"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartEngine;)I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    return v0
.end method

.method static synthetic b(Lcom/artfulbits/aiCharts/Base/ChartEngine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/artfulbits/aiCharts/Base/ChartEngine;)Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    return-object v0
.end method


# virtual methods
.method public final addInvalidateListener(Lcom/artfulbits/aiCharts/Base/IInvalidateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addNotificationListener(Lcom/artfulbits/aiCharts/Base/p;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->LICENSE:Lcom/artfulbits/license/LicenseData;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->LICENSE:Lcom/artfulbits/license/LicenseData;

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-interface {v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ILayout;->a(Ljava/util/List;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-interface {v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ILayout;->a(Ljava/util/List;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->t:[Lcom/artfulbits/aiCharts/Base/ILayout;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-interface {v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ILayout;->a(Ljava/util/List;Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->s:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->s:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-boolean v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->p:Z

    iget-boolean v3, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->q:Z

    invoke-virtual {v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a(ZZ)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->s:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v4}, Lcom/artfulbits/aiCharts/Base/ChartArea;->draw(Lcom/artfulbits/aiCharts/Base/ChartGraph;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->s:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->a()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v3

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartTitle;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartTitle;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->j:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->j:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;

    invoke-virtual {v0, p1, p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->draw(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iput v2, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    :cond_7
    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->c:Lcom/artfulbits/aiCharts/Base/r;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->c:Lcom/artfulbits/aiCharts/Base/r;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/artfulbits/aiCharts/Base/r;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method public final ensureLayout(Z)V
    .locals 0

    return-void
.end method

.method public final getAnnotations()Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->j:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method public final getAntiAlias()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->p:Z

    return v0
.end method

.method public final getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartArea;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    return-object v0
.end method

.method public final getAutoAlignAreas()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->n:Z

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 0

    return-object p0
.end method

.method public final getLegends()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegend;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    return-object v0
.end method

.method public final getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->o:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    return-object v0
.end method

.method public final getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    return-object v0
.end method

.method public final getSeriesStyle()Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    return-object v0
.end method

.method public final getSpacing()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    return v0
.end method

.method public final getTitles()Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartTitle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    return-object v0
.end method

.method public final hitTest(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartTitle;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->hitTest(II)Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1, p2, v3}, Lcom/artfulbits/aiCharts/Base/ChartArea;->hitTest(IILjava/util/ArrayList;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    return-object v3
.end method

.method protected final inflateAttributes(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "palette"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4, p3, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartPalette;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPalette;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->setPalette(Lcom/artfulbits/aiCharts/Base/ChartPalette;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "spacing"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    invoke-interface {p4, p3, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    goto :goto_0
.end method

.method protected final inflateBeginTag(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/f;
    .locals 2

    const-string v0, "area"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->f:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "legend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SeriesItemsAdapter;

    invoke-direct {v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$SeriesItemsAdapter;-><init>()V

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;-><init>(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->h:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "series"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartTitle;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->i:Lcom/artfulbits/aiCharts/Base/ChartCollection;

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final invalidate(I)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/p;

    invoke-interface {v0, p1}, Lcom/artfulbits/aiCharts/Base/p;->a(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/IInvalidateListener;

    invoke-interface {v0}, Lcom/artfulbits/aiCharts/Base/IInvalidateListener;->onInvalidate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final isHitTestEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->q:Z

    return v0
.end method

.method protected final notify(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/p;

    invoke-interface {v0, p1}, Lcom/artfulbits/aiCharts/Base/p;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeInvalidateListener(Lcom/artfulbits/aiCharts/Base/IInvalidateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final removeNotificationListener(Lcom/artfulbits/aiCharts/Base/p;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final save(Landroid/graphics/Bitmap;Z)V
    .locals 4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->setBounds(II)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public final save(Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->save(Landroid/graphics/Bitmap;Z)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method

.method public final setAntiAlias(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->p:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->p:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setAutoAlignAreas(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->n:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setBounds(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    return-void
.end method

.method public final setBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->r:I

    return-void
.end method

.method public final setHitTestEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->q:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->q:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void
.end method

.method public final setPalette(Lcom/artfulbits/aiCharts/Base/ChartPalette;)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->o:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    return-void
.end method

.method public final setSeriesStyle(Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;)V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->g:Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->m:Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    invoke-virtual {v0, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setBaseAttributes(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine;->e:I

    return-void
.end method
