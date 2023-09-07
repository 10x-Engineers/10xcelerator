class c_720_1;
    integer i = -118;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_720_1;
    c_720_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1xxz11zx1zx0xx1x1x11zxzzz11zzxzzzzzzxxxxzzzxxzzzzzxxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
