class c_2360_1;
    integer i = -392;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2360_1;
    c_2360_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xx0x0zxx00101z0z01x11001x0z0xzzxxxzxxzxxzzzxxxzxxxxxxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
