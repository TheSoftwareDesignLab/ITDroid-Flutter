.class public final enum Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLayoutElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field public static final enum Far:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field public static final enum Near:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field public static final enum Stretch:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    const-string v1, "Near"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Near:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    const-string v1, "Center"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    const-string v1, "Far"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Far:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    const-string v1, "Stretch"

    invoke-direct {v0, v1, v5}, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Stretch:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Near:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Center:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Far:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->Stretch:Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->a:[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->a:[Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartLayoutElement$Alignment;

    return-object v0
.end method
