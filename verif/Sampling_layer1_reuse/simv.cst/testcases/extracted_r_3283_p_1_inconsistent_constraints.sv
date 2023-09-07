class c_3283_1;
    integer i = -546;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3283_1;
    c_3283_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz1001x101zxx0zx0zx00110z010xxxxxzzxxzxzxzxzzxxzzxxxxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
