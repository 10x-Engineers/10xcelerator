class c_619_1;
    integer i = -102;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_619_1;
    c_619_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxxzx0100z1z010x0z0zx0100xzz01zzxzzzzxzzxxzxxxxzzzzzxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
