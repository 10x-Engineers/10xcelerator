class c_1175_1;
    integer i = -194;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1175_1;
    c_1175_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zz01x0zz00x11zx0x0011z0z00xxzzzxxzzxzzzzzxxxzxxzxzxzxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
