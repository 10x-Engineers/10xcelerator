class c_1248_1;
    integer i = -206;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1248_1;
    c_1248_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0zx01x0101zx10xx1xzz1zz1zx01xzzxxxxxzzxzxxzzzxxxzzzzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
