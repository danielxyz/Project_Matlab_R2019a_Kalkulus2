classdef appw_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure            matlab.ui.Figure
        MenuDropDownLabel   matlab.ui.control.Label
        MenuDropDown        matlab.ui.control.DropDown
        DanPersamaanDiferensialOrdeLabel  matlab.ui.control.Label
        PersamaanDIferensialTidakEksakLabel  matlab.ui.control.Label
        DIbuatOlehLabel     matlab.ui.control.Label
        Image               matlab.ui.control.Image
        TonyAfriyantoLabel  matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: MenuDropDown
        function MenuDropDownValueChanged(app, event)
            value = app.MenuDropDown.Value;
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.NumberTitle = 'on';
            app.UIFigure.Color = [1 1 1];
            app.UIFigure.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIFigure.Position = [100 100 647 483];
            app.UIFigure.Name = 'UI Figure';
            app.UIFigure.Scrollable = 'on';

            % Create MenuDropDownLabel
            app.MenuDropDownLabel = uilabel(app.UIFigure);
            app.MenuDropDownLabel.HorizontalAlignment = 'right';
            app.MenuDropDownLabel.Position = [10 453 36 22];
            app.MenuDropDownLabel.Text = 'Menu';

            % Create MenuDropDown
            app.MenuDropDown = uidropdown(app.UIFigure);
            app.MenuDropDown.Items = {'HOME', 'Pembahasan 1', 'Pembahasan 2'};
            app.MenuDropDown.ValueChangedFcn = createCallbackFcn(app, @MenuDropDownValueChanged, true);
            app.MenuDropDown.Position = [61 453 184 22];
            app.MenuDropDown.Value = 'Pembahasan 1';

            % Create DanPersamaanDiferensialOrdeLabel
            app.DanPersamaanDiferensialOrdeLabel = uilabel(app.UIFigure);
            app.DanPersamaanDiferensialOrdeLabel.FontSize = 30;
            app.DanPersamaanDiferensialOrdeLabel.FontWeight = 'bold';
            app.DanPersamaanDiferensialOrdeLabel.Position = [111 358 488 36];
            app.DanPersamaanDiferensialOrdeLabel.Text = 'Dan Persamaan Diferensial Orde ';

            % Create PersamaanDIferensialTidakEksakLabel
            app.PersamaanDIferensialTidakEksakLabel = uilabel(app.UIFigure);
            app.PersamaanDIferensialTidakEksakLabel.FontSize = 30;
            app.PersamaanDIferensialTidakEksakLabel.FontWeight = 'bold';
            app.PersamaanDIferensialTidakEksakLabel.Position = [81 388 527 36];
            app.PersamaanDIferensialTidakEksakLabel.Text = 'Persamaan DIferensial Tidak Eksak ';

            % Create DIbuatOlehLabel
            app.DIbuatOlehLabel = uilabel(app.UIFigure);
            app.DIbuatOlehLabel.FontSize = 16;
            app.DIbuatOlehLabel.Position = [271 192 100 22];
            app.DIbuatOlehLabel.Text = 'DIbuat Oleh :';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Position = [271 234 100 100];

            % Create TonyAfriyantoLabel
            app.TonyAfriyantoLabel = uilabel(app.UIFigure);
            app.TonyAfriyantoLabel.HorizontalAlignment = 'center';
            app.TonyAfriyantoLabel.FontSize = 18;
            app.TonyAfriyantoLabel.Position = [201 162 242 22];
            app.TonyAfriyantoLabel.Text = '20180801323  Tony Afriyanto';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = appw_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end