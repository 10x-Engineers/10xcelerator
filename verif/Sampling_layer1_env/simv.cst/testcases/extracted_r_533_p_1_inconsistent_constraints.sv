class c_533_1;
    integer i = -87;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_533_1;
    c_533_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xx1zxx01x1zz0101zxzz11x1z0z1xzxzxxxzxzzxxzxzzzxxxxzzxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
