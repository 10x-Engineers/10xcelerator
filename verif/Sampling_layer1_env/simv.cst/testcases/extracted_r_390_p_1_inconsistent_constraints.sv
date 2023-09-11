class c_390_1;
    integer i = -63;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_390_1;
    c_390_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x100xxz101xxxx110101z1z1x10z0zzxxxxxxxzxzzzzzxxxzzzzzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
