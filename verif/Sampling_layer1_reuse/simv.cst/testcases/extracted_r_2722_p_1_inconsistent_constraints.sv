class c_2722_1;
    integer i = -452;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2722_1;
    c_2722_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx001zx0z10001x0110zz001z01x10x1zxzzzzxzzxzzzxzxxzxzzxxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
