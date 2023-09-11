class c_388_1;
    integer i = -63;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_388_1;
    c_388_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zzx1xz0zz11x00x111z11x001zx0zzxxzzxzzxzzzzzxxxzxxxzzxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
