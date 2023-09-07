class c_1894_1;
    integer i = -314;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1894_1;
    c_1894_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z1xz0111z1xzx1zzz0110110xxzzxzxxzxzzzzxzxzxzxxxxzzxxzxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
