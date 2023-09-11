class c_1852_1;
    integer i = -307;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1852_1;
    c_1852_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x0z11x001z0z100xzzzx0x00x0001xzzzxzxzzxxxxzzxxzxxzxxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
