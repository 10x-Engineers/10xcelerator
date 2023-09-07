class c_3373_1;
    integer i = -561;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3373_1;
    c_3373_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x00z1z011z0z0x10001z1zz1xzxzx1xzxxzxzzzxxxzxzxzzzxxxzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
