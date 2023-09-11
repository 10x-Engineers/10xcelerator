class c_2951_1;
    integer i = -490;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2951_1;
    c_2951_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz11011xxx0z1x11zx0111x0zzzxx0xzzzzxxxzxxxxxzxzzzzxzxxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
