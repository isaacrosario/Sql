USE [SCXP]
GO
/****** Object:  Table [dbo].[CHEQUES]    Script Date: 01/08/2017 04:40:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHEQUES](
	[NUMERO_CHEQUE] [int] NOT NULL,
	[NUMERO_FACTURA] [int] NOT NULL,
	[VALOR_CHEQUE] [money] NULL,
	[FECHA_CHEQUE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMERO_CHEQUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 01/08/2017 04:40:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[NUMERO_FACTURA] [int] NOT NULL,
	[CODIGO] [varchar](7) NOT NULL,
	[VALOR_FACTURA] [money] NULL,
	[FECHA_FACTURA] [datetime] NULL,
	[FECHA_VENCIMIENTO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMERO_FACTURA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROVEEDORES]    Script Date: 01/08/2017 04:40:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDORES](
	[CODIGO] [varchar](7) NOT NULL,
	[NOMBRES] [varchar](25) NOT NULL,
	[APELLIDOS] [varchar](25) NOT NULL,
	[DIRECCION] [varchar](35) NULL,
	[CIUDAD] [varchar](25) NULL,
	[TELEFONO] [varchar](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 01/08/2017 04:40:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[USUARIO] [nvarchar](20) NOT NULL,
	[CLAVE] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[ESTADO_DE_CUENTAS]    Script Date: 01/08/2017 04:40:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ESTADO_DE_CUENTAS]
AS
SELECT DISTINCT 
                         dbo.PROVEEDORES.CODIGO, dbo.PROVEEDORES.NOMBRES, dbo.PROVEEDORES.APELLIDOS, SUM(dbo.FACTURAS.VALOR_FACTURA) AS MONTO, 
                         SUM(dbo.CHEQUES.VALOR_CHEQUE) AS PAGOS, SUM(dbo.FACTURAS.VALOR_FACTURA + dbo.CHEQUES.VALOR_CHEQUE) AS BALANCE, 
                         dbo.FACTURAS.NUMERO_FACTURA
FROM            dbo.PROVEEDORES INNER JOIN
                         dbo.FACTURAS ON dbo.PROVEEDORES.CODIGO = dbo.FACTURAS.CODIGO AND dbo.PROVEEDORES.CODIGO = dbo.FACTURAS.CODIGO INNER JOIN
                         dbo.CHEQUES ON dbo.FACTURAS.NUMERO_FACTURA = dbo.CHEQUES.NUMERO_FACTURA
GROUP BY dbo.PROVEEDORES.CODIGO, dbo.PROVEEDORES.NOMBRES, dbo.PROVEEDORES.APELLIDOS, dbo.FACTURAS.VALOR_FACTURA, dbo.CHEQUES.VALOR_CHEQUE, 
                         dbo.FACTURAS.NUMERO_FACTURA

GO
ALTER TABLE [dbo].[CHEQUES]  WITH CHECK ADD  CONSTRAINT [CHQ_FACT1] FOREIGN KEY([NUMERO_FACTURA])
REFERENCES [dbo].[FACTURAS] ([NUMERO_FACTURA])
GO
ALTER TABLE [dbo].[CHEQUES] CHECK CONSTRAINT [CHQ_FACT1]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FACT_PROV] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[PROVEEDORES] ([CODIGO])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FACT_PROV]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PROVEEDORES"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FACTURAS"
            Begin Extent = 
               Top = 177
               Left = 26
               Bottom = 306
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CHEQUES"
            Begin Extent = 
               Top = 16
               Left = 334
               Bottom = 145
               Right = 546
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ESTADO_DE_CUENTAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ESTADO_DE_CUENTAS'
GO
