class c_3183_1;
    integer i = -529;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3183_1;
    c_3183_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x1x11100xxz1x110001xx0x01x000zxxzxzxzxzzxxzzxxzzzzzxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
