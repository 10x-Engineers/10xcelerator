class c_3149_1;
    integer i = -523;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3149_1;
    c_3149_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxzx0zxzzx1z1101zz1zx11zzz00xxzzzxzzxxzxxxzzxzzxxxzzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
