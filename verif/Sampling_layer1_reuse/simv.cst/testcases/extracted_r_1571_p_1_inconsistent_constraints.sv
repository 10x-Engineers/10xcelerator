class c_1571_1;
    integer i = -260;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1571_1;
    c_1571_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01zzx0z10z100x1z0x1z00z1xxxz1zxxxzzxxxzxzzzzzxzxzxzzxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
