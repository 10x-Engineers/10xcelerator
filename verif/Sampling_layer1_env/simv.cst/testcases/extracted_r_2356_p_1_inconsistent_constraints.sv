class c_2356_1;
    integer i = -391;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2356_1;
    c_2356_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz01zz00zzxxz1x0z10z0zx1zzz10zxxxzxzzxzxxxxxzzzzxzxxxzzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
