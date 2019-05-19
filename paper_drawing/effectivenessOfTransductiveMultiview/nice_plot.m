%
% This function plots axis labels in far nicer format for quality
% printing of figures for publication.
%
% Increase axis label sizes
% Embolden plotted lines
% Make on-plot text larger
% Make axis labels italicized, larger, and moved away from axes
%
% nice_plot(title fontsize, label fontsize, number fontsize, ascii fontsize, line width)
%
% For each argument, specify 
%        [] to use a default value
%     [nan] to leave unchanged from current setting
%     [-sc] to scale default by an amount of 'sc'
%
% Any scale change propagates to further variables, so nice_plot(-1.5) scales 
%     all defaults by an extra 50%
%
% Paul Fieguth, University of Waterloo, ocho.uwaterloo.ca
% November 1998, most recently updated May 2010
%

% title font, label font, number font, ascii font, line width
function nice_plot( tf, lf, nf, af, lw, handles )

sc = 1;
if (nargin < 1), tf=[]; end; if (tf<0) sc=-tf; tf=[]; end; if (length(tf)==0), tf=21*sc; end;
if (nargin < 2), lf=[]; end; if (lf<0) sc=-lf; lf=[]; end; if (length(lf)==0), lf=16*sc; end;
if (nargin < 3), nf=[]; end; if (nf<0) sc=-nf; nf=[]; end; if (length(nf)==0), nf=12*sc; end;
if (nargin < 4), af=[]; end; if (af<0) sc=-af; af=[]; end; if (length(af)==0), af=16*sc; end;
if (nargin < 5), lw=[]; end; if (lw<0) sc=-lw; lw=[]; end; if (length(lw)==0), lw=2*sc; end;

if (nargin < 6), handles = gcf; end;

for h=handles(:)',
  c = get(h,'Children')'; nice_plot( tf, lf, nf, af, lw, c ); 

  s = get(h,'userdata'); if (~(ischar(s))), s='notstr'; end;
  if strcmpi(s,'nochange')==0,
    if (strcmp(get(h,'Type'),'line')),
      if (lw>0), 
        set(h,'LineWidth',lw); 
        set(h,'MarkerSize',10*lw/2);
      end;
    end;

    if (strcmp(get(h,'Type'),'text')),
      if (af > 0),
        set(h,'HorizontalAlignment','center','VerticalAlignment','middle','FontName', 'Times','Fontsize', af);
      end;
    end;

    if (strcmp(get(h,'Type'),'axes')),
      if (nf>0), set(h,'Fontsize',nf); end;
      if (lf>0), 
        set(get(h,'XLabel'), 'Fontsize', lf, 'FontAngle', 'Italic', 'FontName', 'Times', 'VerticalAlignment','top');
        set(get(h,'ZLabel'), 'Fontsize', lf, 'FontAngle', 'Italic', 'FontName', 'Times');
        if (length(get(h,'YAxisLocation'))==4),
          set(get(h,'YLabel'), 'Fontsize', lf, 'FontAngle', 'Italic', 'FontName', 'Times', 'VerticalAlignment','bottom');
        else,
          set(get(h,'YLabel'), 'Fontsize', lf, 'FontAngle', 'Italic', 'FontName', 'Times', 'VerticalAlignment','top');
        end;
      end;
      if (tf>0),
        set(get(h,'Title'), 'Fontsize', tf, 'FontAngle', 'Italic', 'FontName', 'Times' );
      end;
    end;
  end;
end;

% if the plot had a legend, rewrite it to get text alignment right
[hl,ho] = legend;
if length(ho)>0,
    for i=1:length(ho),
        if (strcmp(get(ho(i),'type'),'text')),
            set(ho(i),'HorizontalAlignment','left');
        end
    end
end
