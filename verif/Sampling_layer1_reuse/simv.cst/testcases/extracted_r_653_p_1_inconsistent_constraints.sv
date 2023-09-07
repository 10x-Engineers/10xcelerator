class c_653_1;
    integer i = -107;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_653_1;
    c_653_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z1xxzzxz0x0xz01xx0zx0z01x0xzzzzxxzzzxzxxzzxxzxxzzxzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
