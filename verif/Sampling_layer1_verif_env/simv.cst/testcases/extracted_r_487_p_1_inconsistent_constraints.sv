class c_487_1;
    integer i = -80;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_487_1;
    c_487_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0010xz10z1zzxzxz1z011000zzx0011xxzzxxxzxxzzzxxzzzxzzxxxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
