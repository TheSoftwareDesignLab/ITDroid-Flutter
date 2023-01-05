.class public final enum Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dock"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bottom:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

.field public static final enum Left:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

.field public static final enum Right:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

.field public static final enum Top:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;


# instance fields
.field protected final vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Left:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3, v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Right:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    const-string v1, "Top"

    invoke-direct {v0, v1, v4, v2}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Top:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v5, v2}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Left:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Right:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Top:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    aput-object v1, v0, v5

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->a:[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->vertical:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->a:[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Dock;

    return-object v0
.end method
