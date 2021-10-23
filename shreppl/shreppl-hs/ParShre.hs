{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module ParShre
  ( happyError
  , myLexer
  , pProgram
  , pListFunction
  , pFunction
  , pListFuncArgDecl
  , pFuncArgDecl
  , pStructSelector
  , pSelector
  , pListLetIn
  , pLetIn
  , pExpr
  , pFuncCall
  , pOptionalHash
  , pFuncCallArgList
  ) where

import Prelude

import qualified AbsShre
import LexShre
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
newtype HappyWrap16 = HappyWrap16 (AbsShre.Ident)
happyIn16 :: (AbsShre.Ident) -> (HappyAbsSyn )
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap16 x)
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn ) -> HappyWrap16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
newtype HappyWrap17 = HappyWrap17 (Double)
happyIn17 :: (Double) -> (HappyAbsSyn )
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap17 x)
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn ) -> HappyWrap17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
newtype HappyWrap18 = HappyWrap18 (Integer)
happyIn18 :: (Integer) -> (HappyAbsSyn )
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap18 x)
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn ) -> HappyWrap18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
newtype HappyWrap19 = HappyWrap19 (String)
happyIn19 :: (String) -> (HappyAbsSyn )
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap19 x)
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn ) -> HappyWrap19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
newtype HappyWrap20 = HappyWrap20 (AbsShre.Program)
happyIn20 :: (AbsShre.Program) -> (HappyAbsSyn )
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap20 x)
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn ) -> HappyWrap20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
newtype HappyWrap21 = HappyWrap21 ([AbsShre.Function])
happyIn21 :: ([AbsShre.Function]) -> (HappyAbsSyn )
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap21 x)
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> HappyWrap21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
newtype HappyWrap22 = HappyWrap22 (AbsShre.Function)
happyIn22 :: (AbsShre.Function) -> (HappyAbsSyn )
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap22 x)
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> HappyWrap22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
newtype HappyWrap23 = HappyWrap23 ([AbsShre.FuncArgDecl])
happyIn23 :: ([AbsShre.FuncArgDecl]) -> (HappyAbsSyn )
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap23 x)
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> HappyWrap23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
newtype HappyWrap24 = HappyWrap24 (AbsShre.FuncArgDecl)
happyIn24 :: (AbsShre.FuncArgDecl) -> (HappyAbsSyn )
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap24 x)
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> HappyWrap24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
newtype HappyWrap25 = HappyWrap25 (AbsShre.StructSelector)
happyIn25 :: (AbsShre.StructSelector) -> (HappyAbsSyn )
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap25 x)
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> HappyWrap25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
newtype HappyWrap26 = HappyWrap26 (AbsShre.Selector)
happyIn26 :: (AbsShre.Selector) -> (HappyAbsSyn )
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap26 x)
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> HappyWrap26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
newtype HappyWrap27 = HappyWrap27 ([AbsShre.LetIn])
happyIn27 :: ([AbsShre.LetIn]) -> (HappyAbsSyn )
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap27 x)
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> HappyWrap27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
newtype HappyWrap28 = HappyWrap28 (AbsShre.LetIn)
happyIn28 :: (AbsShre.LetIn) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap28 x)
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> HappyWrap28
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
newtype HappyWrap29 = HappyWrap29 (AbsShre.Expr)
happyIn29 :: (AbsShre.Expr) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap29 x)
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> HappyWrap29
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
newtype HappyWrap30 = HappyWrap30 (AbsShre.FuncCall)
happyIn30 :: (AbsShre.FuncCall) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap30 x)
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> HappyWrap30
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
newtype HappyWrap31 = HappyWrap31 (AbsShre.OptionalHash)
happyIn31 :: (AbsShre.OptionalHash) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap31 x)
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> HappyWrap31
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
newtype HappyWrap32 = HappyWrap32 (AbsShre.FuncCallArgList)
happyIn32 :: (AbsShre.FuncCallArgList) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap32 x)
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> HappyWrap32
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x08\x78\x00\x00\x00\x00\x02\x1e\x00\x00\x00\x80\x80\x07\x00\x00\x00\x00\x20\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x02\x1e\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x1e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x82\x1e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\xa0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x20\xe0\x01\x00\x00\x00\x08\x78\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x80\x07\x00\x00\x00\x40\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x80\x80\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x80\x80\x07\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","%start_pListFunction","%start_pFunction","%start_pListFuncArgDecl","%start_pFuncArgDecl","%start_pStructSelector","%start_pSelector","%start_pListLetIn","%start_pLetIn","%start_pExpr","%start_pFuncCall","%start_pOptionalHash","%start_pFuncCallArgList","Ident","Double","Integer","String","Program","ListFunction","Function","ListFuncArgDecl","FuncArgDecl","StructSelector","Selector","ListLetIn","LetIn","Expr","FuncCall","OptionalHash","FuncCallArgList","'#'","'('","')'","'->'","'.'","':'","';'","'='","'|'","L_Ident","L_doubl","L_integ","L_quoted","%eof"]
        bit_start = st Prelude.* 46
        bit_end = (st Prelude.+ 1) Prelude.* 46
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..45]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\x8a\x00\x8a\x00\x8a\x00\xfb\xff\x06\x00\x8a\x00\xfe\xff\x00\x00\x17\x00\x00\x00\x00\x00\x00\x00\x04\x00\x8a\x00\xcb\x00\x26\x00\x1c\x00\x8a\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x1c\x00\xac\x00\xd8\x00\x1c\x00\x22\x00\x2e\x00\x42\x00\x3e\x00\x00\x00\x13\x00\x00\x00\x3e\x00\x3e\x00\x4e\x00\x4e\x00\x3f\x00\x3f\x00\x52\x00\x4c\x00\x00\x00\x51\x00\x35\x00\x00\x00\x51\x00\x8a\x00\x8a\x00\x00\x00\x8a\x00\x03\x00\x00\x00\x00\x00\x51\x00\x57\x00\x00\x00\x5e\x00\x5e\x00\x00\x00\x00\x00\x5f\x00\x8a\x00\x00\x00\x00\x00\x62\x00\x8a\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xe6\x00\x3a\x00\x28\x00\x43\x00\xb9\x00\x29\x00\x0d\x00\x45\x00\x81\x00\x90\x00\x10\x00\x5b\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x23\x00\x5c\x00\x00\x00\x9f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9c\x00\xab\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc3\x00\x00\x00\x00\x00\x76\x00\x54\x00\xae\x00\x00\x00\xbd\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x77\x00\x63\x00\x00\x00\x00\x00\x00\x00\x72\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xed\xff\xed\xff\x00\x00\xe8\xff\x00\x00\x00\x00\x00\x00\xe1\xff\x00\x00\x00\x00\x00\x00\xd5\xff\xd1\xff\x00\x00\xf2\xff\xe5\xff\xdb\xff\xdc\xff\xda\xff\xe3\xff\xd1\xff\xd1\xff\xd5\xff\x00\x00\x00\x00\xf1\xff\xf0\xff\xef\xff\x00\x00\xd4\xff\x00\x00\x00\x00\xd1\xff\x00\x00\xdd\xff\x00\x00\xe0\xff\x00\x00\xe5\xff\x00\x00\xe6\xff\x00\x00\x00\x00\xe8\xff\xe8\xff\x00\x00\x00\x00\xec\xff\x00\x00\xee\xff\xed\xff\x00\x00\xe7\xff\x00\x00\xe1\xff\x00\x00\xd6\xff\x00\x00\x00\x00\xd9\xff\xd3\xff\x00\x00\xe2\xff\xd8\xff\xde\xff\xd7\xff\xdf\xff\xe4\xff\x00\x00\xe1\xff\xeb\xff\xe9\xff\x00\x00\xe1\xff\xea\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x03\x00\x01\x00\x0a\x00\x05\x00\x09\x00\x0a\x00\x09\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x09\x00\x0a\x00\x05\x00\x09\x00\x0a\x00\x09\x00\x0a\x00\x06\x00\x0e\x00\x0d\x00\x0e\x00\x0e\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x00\x00\x00\x00\x0e\x00\x09\x00\x09\x00\x0a\x00\x06\x00\x00\x00\x0d\x00\x0e\x00\x09\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x09\x00\x04\x00\x00\x00\x06\x00\x0e\x00\x09\x00\x0a\x00\x05\x00\x06\x00\x0d\x00\x0e\x00\x00\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x07\x00\x07\x00\x08\x00\x0e\x00\x0e\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x07\x00\x0e\x00\x0a\x00\x05\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x09\x00\x06\x00\x0a\x00\x0f\x00\x0f\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x00\x00\xff\xff\xff\xff\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x09\x00\x0a\x00\x02\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xff\xff\x09\x00\x0a\x00\xff\xff\x00\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\x09\x00\x0a\x00\xff\xff\x00\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x07\x00\x08\x00\xff\xff\x09\x00\xff\xff\x09\x00\x0a\x00\x00\x00\x0e\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x08\x00\xff\xff\x00\x00\xff\xff\xff\xff\x09\x00\x0a\x00\x05\x00\x06\x00\x0d\x00\x0e\x00\x01\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x02\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x00\x00\xff\xff\xff\xff\xff\xff\x04\x00\x05\x00\x06\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0f\x00\x40\x00\x1e\x00\x0f\x00\x36\x00\x13\x00\x14\x00\x38\x00\x0f\x00\x15\x00\x16\x00\x0f\x00\x17\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x25\x00\x36\x00\x13\x00\x14\x00\x13\x00\x14\x00\x3e\x00\x1e\x00\x15\x00\x16\x00\xff\xff\x38\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x1e\x00\x2c\x00\x26\x00\xff\xff\x38\x00\x13\x00\x14\x00\x2d\x00\x26\x00\x15\x00\x16\x00\x27\x00\x3c\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x3e\x00\x45\x00\x2c\x00\x46\x00\xff\xff\x13\x00\x14\x00\x2e\x00\x2f\x00\x15\x00\x16\x00\x28\x00\x38\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x37\x00\x2a\x00\x2b\x00\xff\xff\xff\xff\x13\x00\x20\x00\x23\x00\x24\x00\x22\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0f\x00\x33\x00\xff\xff\x0f\x00\x36\x00\x13\x00\x20\x00\x42\x00\x24\x00\x22\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x38\x00\x4a\x00\x0f\x00\x1c\x00\x3b\x00\x13\x00\x20\x00\x47\x00\x24\x00\x22\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x43\x00\x48\x00\x00\x00\x00\x00\x00\x00\x13\x00\x20\x00\x4a\x00\x24\x00\x22\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x20\x00\x19\x00\x21\x00\x22\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0f\x00\x1a\x00\x1b\x00\x1c\x00\x00\x00\x13\x00\x14\x00\x00\x00\x28\x00\x1f\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x34\x00\x2b\x00\x00\x00\x00\x00\x00\x00\x13\x00\x14\x00\x00\x00\x28\x00\x3a\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x33\x00\x2b\x00\x00\x00\x38\x00\x00\x00\x13\x00\x14\x00\x28\x00\xff\xff\x41\x00\x16\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x29\x00\x00\x00\x2c\x00\x00\x00\x00\x00\x13\x00\x14\x00\x46\x00\x2f\x00\x40\x00\x16\x00\xd1\xff\x19\x00\xd1\xff\x00\x00\x00\x00\x00\x00\xd1\xff\x00\x00\x38\x00\x0f\x00\x1a\x00\x1b\x00\x1c\x00\xd1\xff\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3a\x00\x00\x00\x0f\x00\x1a\x00\x1b\x00\x1c\x00\x2c\x00\x00\x00\x00\x00\x00\x00\x30\x00\x31\x00\x2f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (13, 46) [
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46)
	]

happy_n_terms = 15 :: Prelude.Int
happy_n_nonterms = 17 :: Prelude.Int

happyReduce_13 = happySpecReduce_1  0# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn16
		 (AbsShre.Ident happy_var_1
	)}

happyReduce_14 = happySpecReduce_1  1# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn17
		 ((read happy_var_1) :: Double
	)}

happyReduce_15 = happySpecReduce_1  2# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn18
		 ((read happy_var_1) :: Integer
	)}

happyReduce_16 = happySpecReduce_1  3# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn19
		 (happy_var_1
	)}

happyReduce_17 = happySpecReduce_1  4# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut21 happy_x_1 of { (HappyWrap21 happy_var_1) -> 
	happyIn20
		 (AbsShre.ProgramRoot happy_var_1
	)}

happyReduce_18 = happySpecReduce_0  5# happyReduction_18
happyReduction_18  =  happyIn21
		 ([]
	)

happyReduce_19 = happySpecReduce_1  5# happyReduction_19
happyReduction_19 happy_x_1
	 =  case happyOut22 happy_x_1 of { (HappyWrap22 happy_var_1) -> 
	happyIn21
		 ((:[]) happy_var_1
	)}

happyReduce_20 = happySpecReduce_3  5# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { (HappyWrap22 happy_var_1) -> 
	case happyOut21 happy_x_3 of { (HappyWrap21 happy_var_3) -> 
	happyIn21
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_21 = happyReduce 6# 6# happyReduction_21
happyReduction_21 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut16 happy_x_1 of { (HappyWrap16 happy_var_1) -> 
	case happyOut23 happy_x_2 of { (HappyWrap23 happy_var_2) -> 
	case happyOut16 happy_x_4 of { (HappyWrap16 happy_var_4) -> 
	case happyOut27 happy_x_6 of { (HappyWrap27 happy_var_6) -> 
	happyIn22
		 (AbsShre.Function1 happy_var_1 happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}}

happyReduce_22 = happyReduce 4# 6# happyReduction_22
happyReduction_22 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut16 happy_x_1 of { (HappyWrap16 happy_var_1) -> 
	case happyOut23 happy_x_2 of { (HappyWrap23 happy_var_2) -> 
	case happyOut27 happy_x_4 of { (HappyWrap27 happy_var_4) -> 
	happyIn22
		 (AbsShre.Function2 happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_23 = happySpecReduce_0  7# happyReduction_23
happyReduction_23  =  happyIn23
		 ([]
	)

happyReduce_24 = happySpecReduce_2  7# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { (HappyWrap24 happy_var_1) -> 
	case happyOut23 happy_x_2 of { (HappyWrap23 happy_var_2) -> 
	happyIn23
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_25 = happySpecReduce_1  8# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOut16 happy_x_1 of { (HappyWrap16 happy_var_1) -> 
	happyIn24
		 (AbsShre.FuncArgDeclIdent happy_var_1
	)}

happyReduce_26 = happySpecReduce_1  9# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOut16 happy_x_1 of { (HappyWrap16 happy_var_1) -> 
	happyIn25
		 (AbsShre.StructSelectorIdent happy_var_1
	)}

happyReduce_27 = happySpecReduce_3  9# happyReduction_27
happyReduction_27 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { (HappyWrap25 happy_var_1) -> 
	case happyOut16 happy_x_3 of { (HappyWrap16 happy_var_3) -> 
	happyIn25
		 (AbsShre.StructSelector1 happy_var_1 happy_var_3
	)}}

happyReduce_28 = happySpecReduce_1  10# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOut25 happy_x_1 of { (HappyWrap25 happy_var_1) -> 
	happyIn26
		 (AbsShre.SelectorStructSelector happy_var_1
	)}

happyReduce_29 = happySpecReduce_3  10# happyReduction_29
happyReduction_29 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut16 happy_x_1 of { (HappyWrap16 happy_var_1) -> 
	case happyOut25 happy_x_3 of { (HappyWrap25 happy_var_3) -> 
	happyIn26
		 (AbsShre.Selector1 happy_var_1 happy_var_3
	)}}

happyReduce_30 = happySpecReduce_0  11# happyReduction_30
happyReduction_30  =  happyIn27
		 ([]
	)

happyReduce_31 = happySpecReduce_1  11# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOut28 happy_x_1 of { (HappyWrap28 happy_var_1) -> 
	happyIn27
		 ((:[]) happy_var_1
	)}

happyReduce_32 = happySpecReduce_3  11# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { (HappyWrap28 happy_var_1) -> 
	case happyOut27 happy_x_3 of { (HappyWrap27 happy_var_3) -> 
	happyIn27
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_33 = happySpecReduce_3  12# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { (HappyWrap26 happy_var_1) -> 
	case happyOut29 happy_x_3 of { (HappyWrap29 happy_var_3) -> 
	happyIn28
		 (AbsShre.LetIn1 happy_var_1 happy_var_3
	)}}

happyReduce_34 = happySpecReduce_1  12# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOut29 happy_x_1 of { (HappyWrap29 happy_var_1) -> 
	happyIn28
		 (AbsShre.LetInExpr happy_var_1
	)}

happyReduce_35 = happySpecReduce_1  13# happyReduction_35
happyReduction_35 happy_x_1
	 =  case happyOut18 happy_x_1 of { (HappyWrap18 happy_var_1) -> 
	happyIn29
		 (AbsShre.ExprInt happy_var_1
	)}

happyReduce_36 = happySpecReduce_1  13# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOut17 happy_x_1 of { (HappyWrap17 happy_var_1) -> 
	happyIn29
		 (AbsShre.ExprDouble happy_var_1
	)}

happyReduce_37 = happySpecReduce_1  13# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut19 happy_x_1 of { (HappyWrap19 happy_var_1) -> 
	happyIn29
		 (AbsShre.ExprString happy_var_1
	)}

happyReduce_38 = happySpecReduce_2  13# happyReduction_38
happyReduction_38 happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { (HappyWrap30 happy_var_1) -> 
	case happyOut31 happy_x_2 of { (HappyWrap31 happy_var_2) -> 
	happyIn29
		 (AbsShre.ExprFuncCall happy_var_1 happy_var_2
	)}}

happyReduce_39 = happySpecReduce_3  13# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_2 of { (HappyWrap29 happy_var_2) -> 
	happyIn29
		 (AbsShre.ExprParen happy_var_2
	)}

happyReduce_40 = happySpecReduce_3  13# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_1 of { (HappyWrap29 happy_var_1) -> 
	case happyOut29 happy_x_3 of { (HappyWrap29 happy_var_3) -> 
	happyIn29
		 (AbsShre.ExprPipe happy_var_1 happy_var_3
	)}}

happyReduce_41 = happySpecReduce_2  14# happyReduction_41
happyReduction_41 happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { (HappyWrap26 happy_var_1) -> 
	case happyOut32 happy_x_2 of { (HappyWrap32 happy_var_2) -> 
	happyIn30
		 (AbsShre.FuncCall1 happy_var_1 happy_var_2
	)}}

happyReduce_42 = happySpecReduce_0  15# happyReduction_42
happyReduction_42  =  happyIn31
		 (AbsShre.OptionalHash1
	)

happyReduce_43 = happySpecReduce_1  15# happyReduction_43
happyReduction_43 happy_x_1
	 =  happyIn31
		 (AbsShre.OptionalHash2
	)

happyReduce_44 = happySpecReduce_2  16# happyReduction_44
happyReduction_44 happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_1 of { (HappyWrap29 happy_var_1) -> 
	case happyOut32 happy_x_2 of { (HappyWrap32 happy_var_2) -> 
	happyIn32
		 (AbsShre.FuncCallArgListContinue happy_var_1 happy_var_2
	)}}

happyReduce_45 = happySpecReduce_1  16# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut29 happy_x_1 of { (HappyWrap29 happy_var_1) -> 
	happyIn32
		 (AbsShre.FuncCallArgListExpr happy_var_1
	)}

happyReduce_46 = happySpecReduce_0  16# happyReduction_46
happyReduction_46  =  happyIn32
		 (AbsShre.FuncCallArgListEnd
	)

happyNewToken action sts stk [] =
	happyDoAction 14# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TV happy_dollar_dollar) -> cont 10#;
	PT _ (TD happy_dollar_dollar) -> cont 11#;
	PT _ (TI happy_dollar_dollar) -> cont 12#;
	PT _ (TL happy_dollar_dollar) -> cont 13#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 14# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = ((>>=))
happyReturn :: () => a -> Err a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Err a
happyError' = (\(tokens, _) -> happyError tokens)
pProgram tks = happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {(HappyWrap20 x') = happyOut20 x} in x'))

pListFunction tks = happySomeParser where
 happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (let {(HappyWrap21 x') = happyOut21 x} in x'))

pFunction tks = happySomeParser where
 happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (let {(HappyWrap22 x') = happyOut22 x} in x'))

pListFuncArgDecl tks = happySomeParser where
 happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (let {(HappyWrap23 x') = happyOut23 x} in x'))

pFuncArgDecl tks = happySomeParser where
 happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (let {(HappyWrap24 x') = happyOut24 x} in x'))

pStructSelector tks = happySomeParser where
 happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (let {(HappyWrap25 x') = happyOut25 x} in x'))

pSelector tks = happySomeParser where
 happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (let {(HappyWrap26 x') = happyOut26 x} in x'))

pListLetIn tks = happySomeParser where
 happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (let {(HappyWrap27 x') = happyOut27 x} in x'))

pLetIn tks = happySomeParser where
 happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (let {(HappyWrap28 x') = happyOut28 x} in x'))

pExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (let {(HappyWrap29 x') = happyOut29 x} in x'))

pFuncCall tks = happySomeParser where
 happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (let {(HappyWrap30 x') = happyOut30 x} in x'))

pOptionalHash tks = happySomeParser where
 happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (let {(HappyWrap31 x') = happyOut31 x} in x'))

pFuncCallArgList tks = happySomeParser where
 happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (let {(HappyWrap32 x') = happyOut32 x} in x'))

happySeq = happyDontSeq


type Err = Either String

happyError :: [Token] -> Err a
happyError ts = Left $
  "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ (prToken t) ++ "'"

myLexer :: String -> [Token]
myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Prelude.Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Prelude.Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Prelude.Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



















data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Prelude.Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else Prelude.False
         action
          | check     = indexShortOffAddr happyTable off_i
          | Prelude.otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `Prelude.mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)













-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ((Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
