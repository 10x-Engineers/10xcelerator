class c_400_1;
    integer i = -65;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_400_1;
    c_400_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011zzxz1xzxzx00000zzzx1zx01xzzzzxxzxxxxxxzxzzzxzzxzxxxzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
