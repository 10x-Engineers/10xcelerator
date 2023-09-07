class c_2669_1;
    integer i = -443;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2669_1;
    c_2669_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1110zzz0z101zxzx010xz00z01zz0x1xzxxzzxzxxxzxzxxxxzzxzxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
