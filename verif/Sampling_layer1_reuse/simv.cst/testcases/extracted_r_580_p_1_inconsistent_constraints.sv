class c_580_1;
    integer i = -95;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_580_1;
    c_580_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x1zx000zzxz00z0zx001011x1z101xxzzxzzxzzxzzzzxxxzzxzzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
