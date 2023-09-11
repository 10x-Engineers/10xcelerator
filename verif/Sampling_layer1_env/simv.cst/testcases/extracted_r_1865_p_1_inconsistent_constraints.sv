class c_1865_1;
    integer i = -309;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1865_1;
    c_1865_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1xx0xxxx101x101zxz00xz10zx0zzxzzxzzzzxzxzzxxzzxzxzzxzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
