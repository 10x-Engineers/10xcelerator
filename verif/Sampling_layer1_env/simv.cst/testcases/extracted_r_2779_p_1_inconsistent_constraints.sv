class c_2779_1;
    integer i = -462;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2779_1;
    c_2779_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zzxzxzz0x0zxxzxxx001zz1z1x101zxxxzzxxxxzxzzzzxxzxzxzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
