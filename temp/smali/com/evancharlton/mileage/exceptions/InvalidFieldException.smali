.class public Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
.super Ljava/lang/Exception;
.source "InvalidFieldException.java"


# static fields
.field private static final serialVersionUID:J = -0x3fbf00e9fab0f18fL


# instance fields
.field private final mErrorMessage:I

.field private final mField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorMessage"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "field"    # Landroid/widget/TextView;
    .param p2, "errorMessage"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->mField:Landroid/widget/TextView;

    .line 19
    iput p2, p0, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->mErrorMessage:I

    .line 20
    return-void
.end method


# virtual methods
.method public getErrorMessage()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->mErrorMessage:I

    return v0
.end method

.method public getField()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->mField:Landroid/widget/TextView;

    return-object v0
.end method
