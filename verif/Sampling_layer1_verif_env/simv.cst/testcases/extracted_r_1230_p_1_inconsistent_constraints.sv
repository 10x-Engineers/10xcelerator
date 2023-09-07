class c_1230_1;
    integer i = -203;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1230_1;
    c_1230_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zx0x10zx10z101z01zxzx0110xz1xxxxzzzzxxzzxxxxxxxzxzzxxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
